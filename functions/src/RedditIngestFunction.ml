(*The Cloud Functions for Firebase SDK to create Cloud Functions and setup triggers.*)
type fbFunctions
external functions: fbFunctions = "firebase-functions" [@@bs.module]

(* The Firebase Admin SDK to access the Firebase Realtime Database.*)
(*let admin = require('firebase-admin'); *)
external initializeApp: unit -> unit = "" [@@bs.module "firebase-admin"]
let app = initializeApp

(*
admin.initializeApp();

// Take the text parameter passed to this HTTP endpoint and insert it into the
// Realtime Database under the path /messages/:pushId/original
exports.addMessage = functions.https.onRequest((req, res) => {
  // Grab the text parameter.
  const original = req.query.text;
  // Push the new message into the Realtime Database using the Firebase Admin SDK.
  return admin.database().ref('/messages').push({original: original}).then((snapshot) => {
    // Redirect with 303 SEE OTHER to the URL of the pushed object in the Firebase console.
    return res.redirect(303, snapshot.ref.toString());
  });
});
*)