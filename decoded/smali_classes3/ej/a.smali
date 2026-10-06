.class public final synthetic Lej/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lej/b;

.field public final synthetic b:Ldj/a;


# direct methods
.method public synthetic constructor <init>(Lej/b;Ldj/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lej/a;->a:Lej/b;

    iput-object p2, p0, Lej/a;->b:Ldj/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lej/a;->a:Lej/b;

    iget-object v1, p0, Lej/a;->b:Ldj/a;

    invoke-static {v0, v1}, Lej/b;->a(Lej/b;Ldj/a;)V

    return-void
.end method
