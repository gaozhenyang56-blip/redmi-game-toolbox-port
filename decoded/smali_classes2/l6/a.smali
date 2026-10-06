.class public Ll6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll6/a$a;,
        Ll6/a$b;
    }
.end annotation


# static fields
.field private static a:Lmiui/slide/ISlideChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Ln6/b;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lm6/a;->K(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ln6/b;->a:Ln6/b;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static b(Landroid/content/Context;Ln6/b;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gb_videobox"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p0, Ln6/b;->c:Ln6/b;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private static c(Ln6/b;)Z
    .locals 2

    invoke-static {}, La8/g0;->U()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p0}, Ll6/a;->b(Landroid/content/Context;Ln6/b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ll6/a;->a(Ln6/b;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static d(Ll6/a$a;Ln6/b;)V
    .locals 0
    return-void
.end method

.method public static e()V
    .locals 0
    return-void
.end method
