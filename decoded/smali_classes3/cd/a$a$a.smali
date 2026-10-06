.class Lcd/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcd/a$a;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

.field final synthetic b:Lcd/a$a;


# direct methods
.method constructor <init>(Lcd/a$a;Lcom/miui/common/card/functions/FuncTopBannerScrollData;)V
    .locals 0

    iput-object p1, p0, Lcd/a$a$a;->b:Lcd/a$a;

    iput-object p2, p0, Lcd/a$a$a;->a:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcd/a$a$a;->a:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_homepage_way"

    const-string v2, "phone_manage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "enter_way"

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "#Intent;action=miui.intent.action.KIDMODE_ENTRANCE;end"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "enter_kid_space_channel"

    const-string v2, "phonemanage_page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    sget-object v1, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcd/a$a$a;->b:Lcd/a$a;

    invoke-static {p1}, Lcd/a$a;->b(Lcd/a$a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcd/a$a$a;->b:Lcd/a$a;

    invoke-static {p1}, Lcd/a$a;->b(Lcd/a$a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcd/a$a$a;->b:Lcd/a$a;

    invoke-static {p1}, Lcd/a$a;->b(Lcd/a$a;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120210

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PhoneManageBannerModel"

    const-string v1, "onClick error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    iget-object p1, p0, Lcd/a$a$a;->a:Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-virtual {p1}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->getStatKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lqf/c;->m0(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
