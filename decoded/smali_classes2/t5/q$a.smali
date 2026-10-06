.class Lt5/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt5/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lt5/q;


# direct methods
.method constructor <init>(Lt5/q;)V
    .locals 0

    iput-object p1, p0, Lt5/q$a;->a:Lt5/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lt5/q$a;->a:Lt5/q;

    invoke-static {v0}, Lt5/q;->a(Lt5/q;)Lt5/q$b;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0a9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    iget-object v0, p0, Lt5/q$a;->a:Lt5/q;

    invoke-static {v0}, Lt5/q;->a(Lt5/q;)Lt5/q$b;

    move-result-object v0

    iget-object v1, p0, Lt5/q$a;->a:Lt5/q;

    invoke-interface {v0, v1, p1}, Lt5/q$b;->n(Lt5/q;Landroid/widget/CompoundButton;)V

    :cond_0
    return-void
.end method
