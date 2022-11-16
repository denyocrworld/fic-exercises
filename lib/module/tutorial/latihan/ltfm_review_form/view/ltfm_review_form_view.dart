import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmReviewFormView extends StatefulWidget {
  const LtfmReviewFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmReviewFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmReviewForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: const Text("Rate"),
              onPressed: () async {
                await showDialog<void>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Review'),
                      content: SingleChildScrollView(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ListBody(
                            children: const <Widget>[
                              //! 6. Pindahkan textarea review, ratingbar, dan tombol review
                              //!    yang berada di bawah ke dalam sini (di dalam children)
                              //! 7. Test fitur ini dengan klik tombol Rate di pojok kanan atas
                              //! 8. Jika popup tertutup setelah tombol review di klik,
                              //!    Tasks ini selesai
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              //! 1. Buat sebuah textarea "Review"
              //! 2. Tambahkan ratingbar setelah textarea review, gunakan kode ini:
              /*
              RatingBar.builder(
                initialRating: 2.0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 28.0,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
              */
              //! 3. Tambahkan SizedBox(height: 30),
              //! 4. Tambahkan tombol "Review"
              //! 5. Tambahkan kode ini ketika tombol review di klik
              /*
              Navigator.pop(context);
              */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmReviewFormView> createState() => LtfmReviewFormController();
}
