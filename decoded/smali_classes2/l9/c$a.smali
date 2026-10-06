.class final Ll9/c$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/securitycenter/Application;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ll9/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll9/c$a;

    invoke-direct {v0}, Ll9/c$a;-><init>()V

    sput-object v0, Ll9/c$a;->a:Ll9/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/securitycenter/Application;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ll9/c$a;->a()Lcom/miui/securitycenter/Application;

    move-result-object v0

    return-object v0
.end method
