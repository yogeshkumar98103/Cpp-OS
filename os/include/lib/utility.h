#ifndef __LIB__UTILITY_H
#define __LIB__UTILITY_H

namespace std {
    template<typename T>
    struct remove_reference {        // remove reference
        typedef T type;
    };

    template<typename T>
    struct remove_reference<T&> {    // remove reference
        typedef T type;
    };

    template<typename T>
    struct remove_reference<T&&> {   // remove rvalue reference
        typedef T type;
    };
    
    template <typename T>
    typename remove_reference<T>::type&& move(T&& arg){
        return static_cast<typename remove_reference<T>::type&&>(arg);
    }
}

#endif // __LIB__UTILITY_H
