cdef extern from "tspec.h":
    float calculate_tspec(char cal_file_name[], float *t, float *a, float *n2, int nt);

def calculate(cal_file_name, float[:] t, float[:] a, float[:] n2): 
    return calculate_tspec(cal_file_name, &t[0], &a[0], &n2[0], len(t))
