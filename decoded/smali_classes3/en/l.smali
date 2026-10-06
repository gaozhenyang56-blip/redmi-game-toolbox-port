.class public interface abstract Len/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Len/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Len/l$a;

    invoke-direct {v0}, Len/l$a;-><init>()V

    sput-object v0, Len/l;->a:Len/l;

    return-void
.end method


# virtual methods
.method public abstract a(ILen/b;)V
.end method

.method public abstract b(ILin/e;IZ)Z
.end method

.method public abstract c(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Len/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract d(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Len/c;",
            ">;Z)Z"
        }
    .end annotation
.end method
