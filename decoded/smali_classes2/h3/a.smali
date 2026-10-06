.class public Lh3/a;
.super Lh3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/a$a;
    }
.end annotation


# instance fields
.field private O:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh3/b;-><init>(ILorg/json/JSONObject;)V

    if-eqz p2, :cond_0

    const-string p1, "brief"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh3/a;->O:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "summary"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh3/a;->O:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic F(Lh3/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/a;->O:Ljava/lang/String;

    return-object p0
.end method
