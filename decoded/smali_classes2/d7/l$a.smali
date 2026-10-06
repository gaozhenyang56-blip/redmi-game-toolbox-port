.class Ld7/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/l;->A(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ld7/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ld7/l;


# direct methods
.method constructor <init>(Ld7/l;)V
    .locals 0

    iput-object p1, p0, Ld7/l$a;->a:Ld7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld7/v;Ld7/v;)I
    .locals 0

    iget p1, p1, Ld7/v;->a:I

    iget p2, p2, Ld7/v;->a:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ld7/v;

    check-cast p2, Ld7/v;

    invoke-virtual {p0, p1, p2}, Ld7/l$a;->a(Ld7/v;Ld7/v;)I

    move-result p1

    return p1
.end method
