.class public final synthetic Lra/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/optimizecenter/storage/SafeProgressDialog;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/optimizecenter/storage/SafeProgressDialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/n;->a:Lcom/miui/optimizecenter/storage/SafeProgressDialog;

    iput-object p2, p0, Lra/n;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lra/n;->a:Lcom/miui/optimizecenter/storage/SafeProgressDialog;

    iget-object v1, p0, Lra/n;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->e(Lcom/miui/optimizecenter/storage/SafeProgressDialog;Ljava/lang/Runnable;)V

    return-void
.end method
