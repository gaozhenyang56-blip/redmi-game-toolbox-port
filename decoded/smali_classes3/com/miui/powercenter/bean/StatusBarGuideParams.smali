.class public Lcom/miui/powercenter/bean/StatusBarGuideParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;,
        Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;,
        Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;,
        Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;
    }
.end annotation


# static fields
.field public static final CATEGORY_RAW:Ljava/lang/String; = "raw"

.field public static final FIELD_ACTION:Ljava/lang/String; = "strong_toast_action"

.field public static final ICON_FORMAT_MP4:Ljava/lang/String; = "mp4"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final KEY_PARAM:Ljava/lang/String; = "param"

.field public static final KEY_TARGET:Ljava/lang/String; = "target"

.field public static final KEY_TOAST_BAR:Ljava/lang/String; = "status_bar_strong_toast"

.field public static final KEY_TOAST_CATEGORY:Ljava/lang/String; = "strong_toast_category"

.field public static final MY_PACKAGE_NAME:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final VALUE_TEXT_BITMAP:Ljava/lang/String; = "text_bitmap"

.field public static final VALUE_TEXT_VIDEO:Ljava/lang/String; = "text_video"

.field public static final VALUE_TOAST_CUSTOM:Ljava/lang/String; = "show_custom_strong_toast"

.field public static final VALUE_VIDEO_TEXT:Ljava/lang/String; = "video_text"


# instance fields
.field left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

.field right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams;->left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    iput-object p2, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams;->right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams;->left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    if-eqz v1, :cond_0

    const-string v2, "left"

    invoke-virtual {v1}, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams;->right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    if-eqz v1, :cond_1

    const-string v2, "right"

    invoke-virtual {v1}, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
