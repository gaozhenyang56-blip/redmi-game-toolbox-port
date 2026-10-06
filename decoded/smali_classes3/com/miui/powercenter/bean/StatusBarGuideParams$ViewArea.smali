.class public Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/bean/StatusBarGuideParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewArea"
.end annotation


# instance fields
.field iconParams:Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;

.field textParams:Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;->textParams:Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;

    if-eqz v1, :cond_0

    const-string v2, "textParams"

    invoke-virtual {v1}, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;->iconParams:Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;

    if-eqz v1, :cond_1

    const-string v2, "iconParams"

    invoke-virtual {v1}, Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
