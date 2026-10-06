.class public Lg4/a$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lg4/a$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lg4/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lg4/a$a;->c:[Ljava/lang/String;

    iput-object p4, p0, Lg4/a$a;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    iget-object p1, p0, Lg4/a$a;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lg4/a$a;->d:[Ljava/lang/String;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lg4/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lg4/a$a;->c:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lg4/a$a;->c:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/app/AppOpsManagerCompat;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lg4/a$a;->d:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lg4/b;->a:Lg4/b;

    iget-object v4, p0, Lg4/a$a;->c:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, p1, v4}, Lg4/b;->e(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v1, v2

    iget-object v6, p0, Lg4/a$a;->b:Ljava/lang/String;

    const-string v7, "pkgName"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v1, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "locale"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v1, v2

    iget-object v6, p0, Lg4/a$a;->d:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "description"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "permissionId"

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lg4/a$a;->c:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v3, v1, v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "processState"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Lcom/miui/permission/PermissionContract;->DESCRIPTION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "PermissionDescUtils"

    const-string v2, "PermissionDescriptionAsyncTask invoked exception"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lg4/a$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
