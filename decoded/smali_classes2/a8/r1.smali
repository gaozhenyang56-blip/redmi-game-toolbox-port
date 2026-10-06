.class public La8/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La8/r1$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "r1"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, La8/p1;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Lm7/e;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, La8/p1;->e(Landroid/content/ContentResolver;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, La8/p1;->a(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, La8/r1;->a:Ljava/lang/String;

    const-string v2, "restore gamebooster Data!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, La8/r1;->b(Landroid/content/Context;I)V

    const/4 v2, 0x2

    invoke-static {p0, v2}, La8/r1;->b(Landroid/content/Context;I)V

    invoke-static {p0}, La8/w1;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "createSucessful"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, La8/w1;->d(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_2
    invoke-static {p0}, Lm7/e;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, La8/p1;->d(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, La8/r1$a;

    invoke-direct {v0, p0, p1}, La8/r1$a;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
