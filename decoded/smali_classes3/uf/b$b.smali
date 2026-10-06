.class Luf/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luf/b;->o(Ljava/lang/String;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Luf/b;


# direct methods
.method constructor <init>(Luf/b;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Luf/b$b;->c:Luf/b;

    iput-object p2, p0, Luf/b$b;->a:Ljava/lang/String;

    iput-object p3, p0, Luf/b$b;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Luf/b$b;->c:Luf/b;

    invoke-static {v0}, Luf/b;->a(Luf/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Luf/b$b;->a:Ljava/lang/String;

    iget-object v2, p0, Luf/b$b;->b:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SharedPreferenceHelper"

    const-string v2, "saveInThread Set<String>:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
