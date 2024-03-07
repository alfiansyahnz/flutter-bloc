import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/bloc/demo/demo_bloc.dart';

class BlocScreen extends StatefulWidget {
  const BlocScreen({super.key});

  @override
  State<BlocScreen> createState() => _BlocScreenState();
}

class _BlocScreenState extends State<BlocScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Test'),
      ),
      body: BlocProvider(create: (_) => DemoBloc(), child: _content(context)),
    );
  }

  Widget _content(BuildContext context) {
    return BlocBuilder<DemoBloc, DemoState>(
      builder: (context, state) {
        return Column(
          children: [
            Center(
              child: Text('${state.number}'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Icon(Icons.add),
                  onPressed: () =>
                      context.read<DemoBloc>().add(const DemoEvent.increment()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  child: const Icon(Icons.remove),
                  onPressed: () =>
                      context.read<DemoBloc>().add(const DemoEvent.decrement()),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
