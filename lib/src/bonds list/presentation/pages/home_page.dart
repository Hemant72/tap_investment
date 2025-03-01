import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_investment/src/bond%20details/presentation/pages/bond_detail_page.dart';
import 'package:tap_investment/src/bonds%20list/domain/entities/bond.dart';
import 'package:tap_investment/src/bonds%20list/presentation/bloc/bonds_list_bloc.dart';
import 'package:tap_investment/src/bonds%20list/presentation/widgets/bonds_list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<BondsListBloc>().add(const BondsListEvent.fetchBonds());

    _searchController.addListener(() {
      context.read<BondsListBloc>().add(
        BondsListEvent.searchBonds(_searchController.text),
      );
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search by Issuer Name or ISIN',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'SUGGESTED RESULTS',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 2),
          Expanded(
            child: BlocBuilder<BondsListBloc, BondsListState>(
              builder: (context, state) {
                if (state is Loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is Loaded) {
                  final filteredBonds = state.filteredBonds;
                  final searchQuery = state.searchQuery;

                  if (filteredBonds.isEmpty) {
                    return Center(
                      child: Text(
                        'No bonds found matching "$searchQuery"',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                        ),
                      ),
                    );
                  }
                  return _buildBondsList(filteredBonds);
                } else if (state is Error) {
                  return Center(
                    child: Text(
                      'Error: ${state.message}',
                      style: const TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  );
                } else {
                  return const Center(child: Text('No bonds available'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBondsList(List<Bond> bonds) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
      child: Card(
        color: Colors.white,
        child: ListView.builder(
          itemCount: bonds.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final bond = bonds[index];
            return BondListItem(
              bond: bond,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BondDetailPage()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
