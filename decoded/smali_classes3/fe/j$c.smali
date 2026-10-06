.class Lfe/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lfe/j$c;->c:Lfe/j;

    iput-object p2, p0, Lfe/j$c;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lfe/j$c;->b:Lfe/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lfe/j$c;->a:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lfe/j$c;->b:Lfe/g;

    iget p1, p1, Lfe/g;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Lfe/p;->b(Ljava/lang/Object;Z)V

    return-void
.end method
