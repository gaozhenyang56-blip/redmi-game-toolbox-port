.class Ljg/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/e;->T(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llg/d;

.field final synthetic b:Z

.field final synthetic c:Ljg/e;


# direct methods
.method constructor <init>(Ljg/e;Llg/d;Z)V
    .locals 0

    iput-object p1, p0, Ljg/e$j;->c:Ljg/e;

    iput-object p2, p0, Ljg/e$j;->a:Llg/d;

    iput-boolean p3, p0, Ljg/e$j;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljg/e$j;->a:Llg/d;

    iget-boolean v1, p0, Ljg/e$j;->b:Z

    invoke-interface {v0, v1}, Llg/d;->b(Z)V

    return-void
.end method
