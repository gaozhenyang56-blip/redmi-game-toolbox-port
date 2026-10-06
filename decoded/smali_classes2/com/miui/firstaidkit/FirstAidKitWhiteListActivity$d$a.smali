.class Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;->m(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d$a;->a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;

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

    iget-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d$a;->a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;

    invoke-static {p2}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;->k(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d$a;->a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;

    invoke-static {p2}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;->k(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d$a;->a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;

    iget-object p1, p1, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;->d:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;

    invoke-static {p1}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->d0(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d$a;->a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;

    invoke-static {p2}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;->k(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$d;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method
