.class Lb2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lh2/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb2/b;


# direct methods
.method constructor <init>(Lb2/b;)V
    .locals 0

    iput-object p1, p0, Lb2/b$a;->a:Lb2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh2/e;Lh2/e;)I
    .locals 0

    iget p1, p1, Lh2/e;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p2, Lh2/e;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lh2/e;

    check-cast p2, Lh2/e;

    invoke-virtual {p0, p1, p2}, Lb2/b$a;->a(Lh2/e;Lh2/e;)I

    move-result p1

    return p1
.end method
