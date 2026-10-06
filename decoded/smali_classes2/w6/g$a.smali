.class Lw6/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/g;->m(Lw6/g$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lx6/d;

.field final synthetic b:Lw6/g;


# direct methods
.method constructor <init>(Lw6/g;Lx6/d;)V
    .locals 0

    iput-object p1, p0, Lw6/g$a;->b:Lw6/g;

    iput-object p2, p0, Lw6/g$a;->a:Lx6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lw6/g$a;->a:Lx6/d;

    sget p2, Lx6/a;->a:I

    iput p2, p1, Lx6/d;->f:I

    if-nez p3, :cond_0

    sget p2, Lx6/a;->f:F

    goto :goto_0

    :cond_0
    sget p2, Lx6/a;->i:F

    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lx6/d;->g:Ljava/lang/String;

    iget-object p1, p0, Lw6/g$a;->a:Lx6/d;

    invoke-virtual {p1}, Lx6/d;->j()Lx6/b;

    move-result-object p1

    iget-object p2, p0, Lw6/g$a;->b:Lw6/g;

    invoke-static {p2}, Lw6/g;->k(Lw6/g;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lw6/i;->u(Landroid/content/Context;Lx6/b;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
