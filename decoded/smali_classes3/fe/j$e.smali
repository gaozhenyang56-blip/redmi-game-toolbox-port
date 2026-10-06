.class Lfe/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfe/j;->o(Lfe/g;Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lfe/g;

.field final synthetic c:Lfe/j;


# direct methods
.method constructor <init>(Lfe/j;Landroid/widget/CheckBox;Lfe/g;)V
    .locals 0

    iput-object p1, p0, Lfe/j$e;->c:Lfe/j;

    iput-object p2, p0, Lfe/j$e;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lfe/j$e;->b:Lfe/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lfe/j$e;->a:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lfe/j$e;->b:Lfe/g;

    iget p2, p2, Lfe/g;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, v0}, Lfe/p;->b(Ljava/lang/Object;Z)V

    iget-object p2, p0, Lfe/j$e;->c:Lfe/j;

    invoke-static {p2}, Lfe/j;->l(Lfe/j;)Lw4/e;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
