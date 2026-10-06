.class public final synthetic Lra/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic a:Lcom/miui/optimizecenter/storage/FboResultActivity;

.field public final synthetic b:Lcb/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/optimizecenter/storage/FboResultActivity;Lcb/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/j;->a:Lcom/miui/optimizecenter/storage/FboResultActivity;

    iput-object p2, p0, Lra/j;->b:Lcb/a$a;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 2

    iget-object v0, p0, Lra/j;->a:Lcom/miui/optimizecenter/storage/FboResultActivity;

    iget-object v1, p0, Lra/j;->b:Lcb/a$a;

    invoke-static {v0, v1}, Lcom/miui/optimizecenter/storage/FboResultActivity;->h0(Lcom/miui/optimizecenter/storage/FboResultActivity;Lcb/a$a;)Z

    move-result v0

    return v0
.end method
