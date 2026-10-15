MODULE ShanghaiTest;  (** ShanghaiTest.Run: a document of Shanghai made and loaded; needs the desktop's display *)

IMPORT Objects, Display, Gadgets, Documents, Out := out;

VAR fails, checks: LONGINT;

PROCEDURE Check(what: ARRAY OF CHAR; ok: BOOLEAN);
BEGIN
  INC(checks);
  IF ~ok THEN INC(fails); Out.String("FAIL "); Out.String(what); Out.Ln END
END Check;

PROCEDURE Run*;
VAR obj: Objects.Object; doc: Documents.Document;
BEGIN
  fails := 0; checks := 0;
  obj := Gadgets.CreateObject("Shanghai.NewDoc"); Check("Shanghai.NewDoc", obj # NIL);
  IF (obj # NIL) & (obj IS Documents.Document) THEN
    doc := obj(Documents.Document); doc.Load(doc);
    Check("the document has its gadget", (doc.dsc # NIL) & (doc.dsc IS Display.Frame))
  ELSE Check("a document", FALSE)
  END;
  Out.String("ShanghaiTest: "); Out.Int(checks, 0); Out.String(" checks, "); Out.Int(fails, 0); Out.String(" failed"); Out.Ln
END Run;

END ShanghaiTest.
