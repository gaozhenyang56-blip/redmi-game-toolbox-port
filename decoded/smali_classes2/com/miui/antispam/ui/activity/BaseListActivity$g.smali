.class public Lcom/miui/antispam/ui/activity/BaseListActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/BaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/miui/antispam/ui/activity/BaseListActivity;


# direct methods
.method protected constructor <init>(Lcom/miui/antispam/ui/activity/BaseListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->b:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->a:Ljava/util/List;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->b:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-object p1, p1, Lcom/miui/antispam/ui/activity/BaseListActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->b:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-object p1, p1, Lcom/miui/antispam/ui/activity/BaseListActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->b:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-object p1, p1, Lcom/miui/antispam/ui/activity/BaseListActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->b:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-object p1, p1, Lcom/miui/antispam/ui/activity/BaseListActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, p2

    :goto_0
    invoke-static {}, Lcom/miui/antispam/ui/activity/BaseListActivity;->e0()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    move v5, p2

    goto :goto_1

    :cond_3
    move v5, p1

    :goto_1
    iget-object v3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->b:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->a:Ljava/util/List;

    new-array p2, v0, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->b:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget v7, p1, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    iget-boolean p1, p1, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    xor-int/lit8 v8, p1, 0x1

    invoke-static/range {v3 .. v8}, Lm2/f;->N(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    :cond_4
    return-void
.end method
