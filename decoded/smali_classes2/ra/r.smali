.class public final synthetic Lra/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/optimizecenter/storage/a;

.field public final synthetic b:Lwa/a;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/optimizecenter/storage/a;Lwa/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/r;->a:Lcom/miui/optimizecenter/storage/a;

    iput-object p2, p0, Lra/r;->b:Lwa/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lra/r;->a:Lcom/miui/optimizecenter/storage/a;

    iget-object v1, p0, Lra/r;->b:Lwa/a;

    invoke-static {v0, v1}, Lcom/miui/optimizecenter/storage/a;->b(Lcom/miui/optimizecenter/storage/a;Lwa/a;)V

    return-void
.end method
