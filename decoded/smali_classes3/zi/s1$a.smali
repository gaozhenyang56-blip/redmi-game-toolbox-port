.class public abstract Lzi/s1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lzi/r1;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Random;

.field private f:I

.field private g:Lzi/s1$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzi/s1$a;->b:Lzi/r1;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lzi/s1$a;->e:Ljava/util/Random;

    const/4 v0, 0x0

    iput v0, p0, Lzi/s1$a;->f:I

    iput-object p1, p0, Lzi/s1$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lzi/s1$a;->b:Lzi/r1;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/s1$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lzi/s1$a;->g:Lzi/s1$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzi/s1$a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzi/s1$a;->f(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lzi/s1$a;->h(Landroid/content/Context;)V

    return-void
.end method

.method public abstract e(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public f(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lzi/s1;->c(Landroid/content/Context;)Lzi/s1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lzi/s1;->e(Lzi/s1$a;)V

    return-void
.end method

.method public g(Lzi/s1$a;)V
    .locals 0

    iput-object p1, p0, Lzi/s1$a;->g:Lzi/s1$a;

    return-void
.end method

.method public h(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lzi/s1$a;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzi/s1$a;->b:Lzi/r1;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzi/s1$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lzi/s1$a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzi/p0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lzi/t1;

    invoke-direct {v1, p0, v0}, Lzi/t1;-><init>(Lzi/s1$a;Landroid/content/Context;)V

    invoke-static {v0, v2, v1}, Lzi/ja;->b(Landroid/content/Context;Ljava/io/File;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
