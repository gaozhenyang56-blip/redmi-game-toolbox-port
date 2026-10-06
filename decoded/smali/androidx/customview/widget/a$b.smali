.class Landroidx/customview/widget/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/customview/widget/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/customview/widget/b$b<",
        "Lm/h<",
        "Lc0/k;",
        ">;",
        "Lc0/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm/h;

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/a$b;->c(Lm/h;I)Lc0/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lm/h;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/a$b;->d(Lm/h;)I

    move-result p1

    return p1
.end method

.method public c(Lm/h;I)Lc0/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/h<",
            "Lc0/k;",
            ">;I)",
            "Lc0/k;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lm/h;->m(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc0/k;

    return-object p1
.end method

.method public d(Lm/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/h<",
            "Lc0/k;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lm/h;->l()I

    move-result p1

    return p1
.end method
