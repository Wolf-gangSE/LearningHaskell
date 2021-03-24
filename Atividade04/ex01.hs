--Lista de exercícios sobre tipos e classes

data Nat = Zero | Suc Nat

somar :: Nat -> Nat -> Nat
somar Zero n = n
somar (Suc m) n = Suc (somar m n)

mult :: Nat -> Nat -> Nat
mult Zero _ = Zero
mult _ Zero = Zero
mult (Suc m) n = somar (Suc m) (mult (Suc m) n)