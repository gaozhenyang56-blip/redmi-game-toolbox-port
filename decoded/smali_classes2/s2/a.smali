.class public final synthetic Ls2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 1

    iget-object v0, p0, Ls2/a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Ls2/j;->b(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method
