.class Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/CacheCheckManager$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/scanner/CacheCheckManager$a;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/CacheCheckManager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;->a:Lcom/miui/securityscan/scanner/CacheCheckManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a$a;-><init>(Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;Landroid/os/IBinder;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method
