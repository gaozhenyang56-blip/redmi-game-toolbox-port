.class public Lme/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lme/n;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/n;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lme/n;
    .locals 1

    sget-object v0, Lme/n;->b:Lme/n;

    if-nez v0, :cond_0

    new-instance v0, Lme/n;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lme/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lme/n;->b:Lme/n;

    :cond_0
    sget-object p0, Lme/n;->b:Lme/n;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 9

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lme/n;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :catch_0
    :cond_1
    return-wide v0
.end method
