.class public abstract Lhn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljavax/net/ssl/X509TrustManager;)Lhn/c;
    .locals 1

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfn/f;->c(Ljavax/net/ssl/X509TrustManager;)Lhn/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end method
