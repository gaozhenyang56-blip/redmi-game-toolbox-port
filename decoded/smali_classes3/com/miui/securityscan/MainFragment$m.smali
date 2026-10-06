.class Lcom/miui/securityscan/MainFragment$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$m;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$m;->a:Lcom/miui/securityscan/MainFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->b:Z

    return-void
.end method
