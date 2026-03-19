import 'package:relative_distance/relative_distance.dart';
import 'package:test/test.dart';

void main() {
  final relativeDistance = RelativeDistance();

  group('RelativeDistance', () {
    test('Direct parent-child relation', () {
      final result = relativeDistance.degreeOfSeparation(<String, List<String>>{
        'Vera': <String>['Tomoko'],
        'Tomoko': <String>['Aditi']
      }, 'Vera', 'Tomoko');
      expect(result, equals(1));
    }, skip: false);

    test('Sibling relationship', () {
      final result = relativeDistance.degreeOfSeparation(<String, List<String>>{
        'Dalia': <String>['Olga', 'Yassin']
      }, 'Olga', 'Yassin');
      expect(result, equals(1));
    }, skip: true);

    test('Two degrees of separation, grandchild', () {
      final result = relativeDistance.degreeOfSeparation(<String, List<String>>{
        'Khadija': <String>['Mateo'],
        'Mateo': <String>['Rami']
      }, 'Khadija', 'Rami');
      expect(result, equals(2));
    }, skip: true);

    test('Unrelated individuals', () {
      final result = relativeDistance.degreeOfSeparation(<String, List<String>>{
        'Priya': <String>['Rami'],
        'Kaito': <String>['Elif']
      }, 'Priya', 'Kaito');
      expect(result, equals(null));
    }, skip: true);

    test('Complex graph, cousins', () {
      final result = relativeDistance.degreeOfSeparation(<String, List<String>>{
        'Aiko': <String>['Bao', 'Carlos'],
        'Bao': <String>['Dalia', 'Elias'],
        'Carlos': <String>['Fatima', 'Gustavo'],
        'Dalia': <String>['Hassan', 'Isla'],
        'Elias': <String>['Javier'],
        'Fatima': <String>['Khadija', 'Liam'],
        'Gustavo': <String>['Mina'],
        'Hassan': <String>['Noah', 'Olga'],
        'Isla': <String>['Pedro'],
        'Javier': <String>['Quynh', 'Ravi'],
        'Khadija': <String>['Sofia'],
        'Liam': <String>['Tariq', 'Uma'],
        'Mina': <String>['Viktor', 'Wang'],
        'Noah': <String>['Xiomara'],
        'Olga': <String>['Yuki'],
        'Pedro': <String>['Zane', 'Aditi'],
        'Quynh': <String>['Boris'],
        'Ravi': <String>['Celine'],
        'Sofia': <String>['Diego', 'Elif'],
        'Tariq': <String>['Farah'],
        'Uma': <String>['Giorgio'],
        'Viktor': <String>['Hana', 'Ian'],
        'Wang': <String>['Jing'],
        'Xiomara': <String>['Kaito'],
        'Yuki': <String>['Leila'],
        'Zane': <String>['Mateo'],
        'Aditi': <String>['Nia'],
        'Boris': <String>['Oscar'],
        'Celine': <String>['Priya'],
        'Diego': <String>['Qi'],
        'Elif': <String>['Rami'],
        'Farah': <String>['Sven'],
        'Giorgio': <String>['Tomoko'],
        'Hana': <String>['Umar'],
        'Ian': <String>['Vera'],
        'Jing': <String>['Wyatt'],
        'Kaito': <String>['Xia'],
        'Leila': <String>['Yassin'],
        'Mateo': <String>['Zara'],
        'Nia': <String>['Antonio'],
        'Oscar': <String>['Bianca'],
        'Priya': <String>['Cai'],
        'Qi': <String>['Dimitri'],
        'Rami': <String>['Ewa'],
        'Sven': <String>['Fabio'],
        'Tomoko': <String>['Gabriela'],
        'Umar': <String>['Helena'],
        'Vera': <String>['Igor'],
        'Wyatt': <String>['Jun'],
        'Xia': <String>['Kim'],
        'Yassin': <String>['Lucia'],
        'Zara': <String>['Mohammed']
      }, 'Dimitri', 'Fabio');
      expect(result, equals(9));
    }, skip: true);

    test('Complex graph, no shortcut, far removed nephew', () {
      final result = relativeDistance.degreeOfSeparation(<String, List<String>>{
        'Aiko': <String>['Bao', 'Carlos'],
        'Bao': <String>['Dalia', 'Elias'],
        'Carlos': <String>['Fatima', 'Gustavo'],
        'Dalia': <String>['Hassan', 'Isla'],
        'Elias': <String>['Javier'],
        'Fatima': <String>['Khadija', 'Liam'],
        'Gustavo': <String>['Mina'],
        'Hassan': <String>['Noah', 'Olga'],
        'Isla': <String>['Pedro'],
        'Javier': <String>['Quynh', 'Ravi'],
        'Khadija': <String>['Sofia'],
        'Liam': <String>['Tariq', 'Uma'],
        'Mina': <String>['Viktor', 'Wang'],
        'Noah': <String>['Xiomara'],
        'Olga': <String>['Yuki'],
        'Pedro': <String>['Zane', 'Aditi'],
        'Quynh': <String>['Boris'],
        'Ravi': <String>['Celine'],
        'Sofia': <String>['Diego', 'Elif'],
        'Tariq': <String>['Farah'],
        'Uma': <String>['Giorgio'],
        'Viktor': <String>['Hana', 'Ian'],
        'Wang': <String>['Jing'],
        'Xiomara': <String>['Kaito'],
        'Yuki': <String>['Leila'],
        'Zane': <String>['Mateo'],
        'Aditi': <String>['Nia'],
        'Boris': <String>['Oscar'],
        'Celine': <String>['Priya'],
        'Diego': <String>['Qi'],
        'Elif': <String>['Rami'],
        'Farah': <String>['Sven'],
        'Giorgio': <String>['Tomoko'],
        'Hana': <String>['Umar'],
        'Ian': <String>['Vera'],
        'Jing': <String>['Wyatt'],
        'Kaito': <String>['Xia'],
        'Leila': <String>['Yassin'],
        'Mateo': <String>['Zara'],
        'Nia': <String>['Antonio'],
        'Oscar': <String>['Bianca'],
        'Priya': <String>['Cai'],
        'Qi': <String>['Dimitri'],
        'Rami': <String>['Ewa'],
        'Sven': <String>['Fabio'],
        'Tomoko': <String>['Gabriela'],
        'Umar': <String>['Helena'],
        'Vera': <String>['Igor'],
        'Wyatt': <String>['Jun'],
        'Xia': <String>['Kim'],
        'Yassin': <String>['Lucia'],
        'Zara': <String>['Mohammed']
      }, 'Lucia', 'Jun');
      expect(result, equals(14));
    }, skip: true);

    test(
        'Complex graph, some shortcuts, cross-down and cross-up, cousins several times removed, with unrelated family tree',
        () {
      final result = relativeDistance.degreeOfSeparation(<String, List<String>>{
        'Aiko': <String>['Bao', 'Carlos'],
        'Bao': <String>['Dalia'],
        'Carlos': <String>['Fatima', 'Gustavo'],
        'Dalia': <String>['Hassan', 'Isla'],
        'Fatima': <String>['Khadija', 'Liam'],
        'Gustavo': <String>['Mina'],
        'Hassan': <String>['Noah', 'Olga'],
        'Isla': <String>['Pedro'],
        'Javier': <String>['Quynh', 'Ravi'],
        'Khadija': <String>['Sofia'],
        'Liam': <String>['Tariq', 'Uma'],
        'Mina': <String>['Viktor', 'Wang'],
        'Noah': <String>['Xiomara'],
        'Olga': <String>['Yuki'],
        'Pedro': <String>['Zane', 'Aditi'],
        'Quynh': <String>['Boris'],
        'Ravi': <String>['Celine'],
        'Sofia': <String>['Diego', 'Elif'],
        'Tariq': <String>['Farah'],
        'Uma': <String>['Giorgio'],
        'Viktor': <String>['Hana', 'Ian'],
        'Wang': <String>['Jing'],
        'Xiomara': <String>['Kaito'],
        'Yuki': <String>['Leila'],
        'Zane': <String>['Mateo'],
        'Aditi': <String>['Nia'],
        'Boris': <String>['Oscar'],
        'Celine': <String>['Priya'],
        'Diego': <String>['Qi'],
        'Elif': <String>['Rami'],
        'Farah': <String>['Sven'],
        'Giorgio': <String>['Tomoko'],
        'Hana': <String>['Umar'],
        'Ian': <String>['Vera'],
        'Jing': <String>['Wyatt'],
        'Kaito': <String>['Xia'],
        'Leila': <String>['Yassin'],
        'Mateo': <String>['Zara'],
        'Nia': <String>['Antonio'],
        'Oscar': <String>['Bianca'],
        'Priya': <String>['Cai'],
        'Qi': <String>['Dimitri'],
        'Rami': <String>['Ewa'],
        'Sven': <String>['Fabio'],
        'Tomoko': <String>['Gabriela'],
        'Umar': <String>['Helena'],
        'Vera': <String>['Igor'],
        'Wyatt': <String>['Jun'],
        'Xia': <String>['Kim'],
        'Yassin': <String>['Lucia'],
        'Zara': <String>['Mohammed']
      }, 'Wyatt', 'Xia');
      expect(result, equals(12));
    }, skip: true);
  });
}
