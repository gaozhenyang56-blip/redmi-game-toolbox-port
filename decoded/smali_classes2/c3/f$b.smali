.class Lc3/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/f;->D0(Lmiui/security/SecurityManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiui/security/SecurityManager;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/security/SecurityManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc3/f$b;->a:Lmiui/security/SecurityManager;

    iput-object p2, p0, Lc3/f$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc3/f$b;->a:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lc3/f$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->removeAccessControlPass(Ljava/lang/String;)V

    return-void
.end method
