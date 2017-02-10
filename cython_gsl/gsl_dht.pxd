cdef extern from "gsl/gsl_dht.h":

    ctypedef struct gsl_dht:
        size_t size
        double nu
        double xmax
        double kmax
        double * j
        double * Jjj
        double * J2

    
    gsl_dht * gsl_dht_alloc(size_t size) nogil
    gsl_dht * gsl_dht_new(size_t size, double nu, double xmax) nogil

    int gsl_dht_init(gsl_dht * t, double nu, double xmax) nogil

    double gsl_dht_x_sample(gsl_dht * t, int n) nogil
    double gsl_dht_k_sample(gsl_dht * t, int n) nogil

    void gsl_dht_free(gsl_dht * t) nogil

    int gsl_dht_apply(gsl_dht * t, double * f_in, double * f_out) nogil

