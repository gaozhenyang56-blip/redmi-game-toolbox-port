.class public Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/bean/StatusBarGuideParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextParams"
.end annotation


# instance fields
.field text:Ljava/lang/String;

.field textColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;->textColor:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "text"

    iget-object v2, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "textColor"

    iget-object v2, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;->textColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
