import Buffer "mo:base/Buffer";

actor class DAO() {

    // TASK 1
    let name : Text = "Motoko Lesson DAO";

    // TASK 2
    var manifesto : Text = "To beceome a proefficient developer by the end of this bootcamp";

    // Task 6
    var goals : Buffer.Buffer<Text> = Buffer.Buffer<Text>(0);

    // TASK 3
    public query func getName() : async Text {
        return name;
    };

    // TASK 4
    public query func getManifesto() : async Text {
        return manifesto;
    };

    // TASK 5
    public func setManifesto(newManifesto : Text) : async () {
        manifesto := newManifesto;
        return;
    };

    // TASK 7
    public func addGoal(newGoal : Text) : async () {
        goals.add(newGoal);
        return;
    };

    // TASK 8
    public query func getGoals() : async [Text] {
        return Buffer.toArray(goals);
    }
};
