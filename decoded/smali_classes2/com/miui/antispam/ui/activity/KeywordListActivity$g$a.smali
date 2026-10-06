.class Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->z(Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;

.field final synthetic b:I

.field final synthetic c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity$g;Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;

    iput p3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    iget-boolean v0, v0, Lcom/miui/antispam/ui/view/a;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;

    iget-object p1, p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    iget v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;->b:I

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/antispam/ui/view/a;->u(IZZ)V

    :goto_0
    return-void
.end method
