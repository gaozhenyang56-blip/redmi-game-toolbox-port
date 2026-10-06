.class Lw2/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw2/b$a;


# direct methods
.method constructor <init>(Lw2/b$a;)V
    .locals 0

    iput-object p1, p0, Lw2/b$a$a;->a:Lw2/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 1

    new-instance v0, Lw2/b$a$a$a;

    invoke-direct {v0, p0, p1}, Lw2/b$a$a$a;-><init>(Lw2/b$a$a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
