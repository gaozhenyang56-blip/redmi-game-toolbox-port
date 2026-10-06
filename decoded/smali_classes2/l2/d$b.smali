.class Ll2/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/d;->A(Ll2/d$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll2/d$d;

.field final synthetic b:I

.field final synthetic c:Ll2/d;


# direct methods
.method constructor <init>(Ll2/d;Ll2/d$d;I)V
    .locals 0

    iput-object p1, p0, Ll2/d$b;->c:Ll2/d;

    iput-object p2, p0, Ll2/d$b;->a:Ll2/d$d;

    iput p3, p0, Ll2/d$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ll2/d$b;->c:Ll2/d;

    iget-boolean v1, v0, Lcom/miui/antispam/ui/view/a;->e:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ll2/d;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ll2/d$b;->a:Ll2/d$d;

    iget-object p1, p1, Ll2/d$d;->e:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Ll2/d$b;->c:Ll2/d;

    iget v0, p0, Ll2/d$b;->b:I

    iget-object v1, p0, Ll2/d$b;->a:Ll2/d$d;

    iget-object v1, v1, Ll2/d$d;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/antispam/ui/view/a;->u(IZZ)V

    :goto_0
    return-void
.end method
