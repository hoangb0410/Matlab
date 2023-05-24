function t=nhanquaternion(s,r)
    R=[R(1) R(2) R(3) R(4)
      -R(2) R(1) -R(4) R(3)
      -R(3) R(4) R(1) -R(2)
      -R(4) -R(3) R(2) R(1)];
  t=(s'*r)';
end