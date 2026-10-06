.class La4/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/a;->a(Landroid/content/Context;La4/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:La4/a$b;


# direct methods
.method constructor <init>(Landroid/content/Context;La4/a$b;)V
    .locals 0

    iput-object p1, p0, La4/a$a;->a:Landroid/content/Context;

    iput-object p2, p0, La4/a$a;->b:La4/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La4/a$a;->a:Landroid/content/Context;

    const-string v1, "music_app.json"

    invoke-static {v0, v1}, La8/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, La4/a$a$a;

    invoke-direct {v2, p0}, La4/a$a$a;-><init>(La4/a$a;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, La4/a$a;->b:La4/a$b;

    invoke-interface {v1, v0}, La4/a$b;->a(Ljava/util/List;)V

    return-void
.end method
