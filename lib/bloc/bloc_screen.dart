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
      body: BlocProvider(
          create: (_) => DemoBloc(), child: _contentBlocConsumer(context)),
    );
  }

  Widget _contentBlocBuilder(BuildContext context) {
    return BlocBuilder<DemoBloc, DemoState>(
      builder: (context, state) {
        return Column(
          children: [
            Center(
              child: Text('${state.number}'),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () =>
                      context.read<DemoBloc>().add(const DemoEvent.increment()),
                  child: const Text('Increment'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () =>
                      context.read<DemoBloc>().add(const DemoEvent.decrement()),
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _contentBlocConsumer(BuildContext context) {
    return BlocConsumer<DemoBloc, DemoState>(
      listener: (context, state) {
        if (state.number > 5) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Number updated to ${state.number}'),
            ),
          );
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('${state.number}'),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () =>
                      context.read<DemoBloc>().add(const DemoEvent.increment()),
                  child: const Text('Increment'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () =>
                      context.read<DemoBloc>().add(const DemoEvent.decrement()),
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
