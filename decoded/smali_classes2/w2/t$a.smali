.class Lw2/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/t;->K(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lp9/a;


# direct methods
.method constructor <init>(Lp9/a;)V
    .locals 0

    iput-object p1, p0, Lw2/t$a;->a:Lp9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lw2/t;->M(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lw2/t$a;->a:Lp9/a;

    invoke-virtual {p1}, Lp9/a;->m()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lw2/t$a;->a:Lp9/a;

    invoke-virtual {v0}, Lp9/a;->m()V

    throw p1
.end method
