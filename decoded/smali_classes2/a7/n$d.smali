.class final La7/n$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/n;-><init>(Lcom/miui/gamebooster/service/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La7/n;


# direct methods
.method constructor <init>(La7/n;)V
    .locals 0

    iput-object p1, p0, La7/n$d;->a:La7/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, La7/n;->e:La7/n$a;

    iget-object v1, p0, La7/n$d;->a:La7/n;

    invoke-static {v1}, La7/n;->b(La7/n;)Lcom/miui/gamebooster/service/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceManager.boosterPkgName"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, La7/n$a;->a(La7/n$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La7/n$d;->a:La7/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inBattleKey is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, La7/n;->j(La7/n;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La7/n$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
