.class Lcom/miui/securityscan/ui/settings/WhiteListActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;->m(Lcom/miui/securityscan/ui/settings/WhiteListActivity$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d$a;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/model/AbsModel;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d$a;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-static {p2}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;->k(Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d$a;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-static {p2}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;->k(Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d$a;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    iget-object p1, p1, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;->d:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-static {p1}, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->d0(Lcom/miui/securityscan/ui/settings/WhiteListActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d$a;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-static {p2}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;->k(Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method
