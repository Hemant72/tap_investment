import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bond%20details/domain/entities/bond_detail.dart';
import '../../../bond%20details/presentation/bloc/bond_details_bloc.dart';
import '../../../bond%20details/presentation/widgets/bond_details_header.dart';
import '../../../bond%20details/presentation/widgets/financial_chart.dart';
import '../../../bond%20details/presentation/widgets/issuer_details.dart';
import '../../../bond%20details/presentation/widgets/pros_cons_section.dart';

class BondDetailPage extends StatefulWidget {
  const BondDetailPage({super.key});

  @override
  State<BondDetailPage> createState() => _BondDetailPageState();
}

class _BondDetailPageState extends State<BondDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    context.read<BondDetailsBloc>().add(
      const BondDetailsEvent.fetchBondDetail(),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: BlocBuilder<BondDetailsBloc, BondDetailsState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loaded) {
            return _buildDetailContent(state.bondDetail);
          } else if (state is Error) {
            return Center(
              child: Text(
                'Error: ${state.message}',
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
            );
          } else {
            return const Center(child: Text('No bond details available'));
          }
        },
      ),
    );
  }

  Widget _buildDetailContent(BondDetail bondDetail) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BondDetailHeader(bondDetail: bondDetail),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade200, width: 1),
              ),
            ),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.blue.shade700,
              unselectedLabelColor: Colors.grey.shade600,
              indicatorColor: Colors.blue.shade700,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(text: 'ISIN Analysis'),
                Tab(text: 'Pros & Cons'),
              ],
            ),
          ),

          AnimatedBuilder(
            animation: _tabController,
            builder: (context, child) {
              return _tabController.index == 0
                  ? _buildAnalysisContent(bondDetail)
                  : ProsConsSection(prosAndCons: bondDetail.prosAndCons);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAnalysisContent(BondDetail bondDetail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Container(
          height: 250,
          padding: const EdgeInsets.all(12.0),
          child: FinancialChart(financials: bondDetail.financials),
        ),
        const SizedBox(height: 6),
        IssuerDetailsSection(issuerDetails: bondDetail.issuerDetails),
        const SizedBox(height: 8),
      ],
    );
  }
}
