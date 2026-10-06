.class public Lzi/q1;
.super Lzi/s1$d;
.source "SourceFile"


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lzi/s1$d;-><init>(Ljava/lang/String;Landroid/content/ContentValues;)V

    iput-object p3, p0, Lzi/q1;->i:Ljava/lang/String;

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Lzi/u7;)Lzi/q1;
    .locals 5

    invoke-static {p2}, Lzi/b9;->e(Lzi/c9;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "messageId"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lzi/u7;->y()Ljava/lang/String;

    move-result-object p2

    const-string v3, "messageItemId"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "messageItem"

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-static {p0}, Lzi/h1;->d(Landroid/content/Context;)Lzi/h1;

    move-result-object p2

    invoke-virtual {p2}, Lzi/h1;->l()Ljava/lang/String;

    move-result-object p2

    const-string v0, "appId"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lzi/h1;->d(Landroid/content/Context;)Lzi/h1;

    move-result-object p0

    invoke-virtual {p0}, Lzi/h1;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "packageName"

    invoke-virtual {v1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "createTimeStamp"

    invoke-virtual {v1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "uploadTimestamp"

    invoke-virtual {v1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p0, Lzi/q1;

    const-string p2, "a job build to insert message to db"

    invoke-direct {p0, p1, v1, p2}, Lzi/q1;-><init>(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
