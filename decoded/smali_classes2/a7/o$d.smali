.class La7/o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:La7/o;


# direct methods
.method public constructor <init>(La7/o;I)V
    .locals 0

    iput-object p1, p0, La7/o$d;->b:La7/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La7/o$d;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget v0, p0, La7/o$d;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La7/o$d;->b:La7/o;

    iget-object v0, v0, La7/o;->c:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2, v2}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->w0(ZZ)V

    :cond_1
    invoke-static {}, La8/r0;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, La7/o$d;->b:La7/o;

    iget-object v0, v0, La7/o;->c:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1, v2}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->w0(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
