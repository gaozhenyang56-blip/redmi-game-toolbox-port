.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$1200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {v0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$1300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
