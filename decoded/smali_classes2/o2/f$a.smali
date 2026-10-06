.class Lo2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/f;->i(Lcom/miui/guardprovider/VirusObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/guardprovider/VirusObserver;

.field final synthetic b:Lo2/f;


# direct methods
.method constructor <init>(Lo2/f;Lcom/miui/guardprovider/VirusObserver;)V
    .locals 0

    iput-object p1, p0, Lo2/f$a;->b:Lo2/f;

    iput-object p2, p0, Lo2/f$a;->a:Lcom/miui/guardprovider/VirusObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 1

    new-instance v0, Lo2/f$a$a;

    invoke-direct {v0, p0, p1}, Lo2/f$a$a;-><init>(Lo2/f$a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
