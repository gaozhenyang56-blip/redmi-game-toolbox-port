.class public Lcom/miui/securitycenter/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/securitycenter/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securitycenter/provider/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/securitycenter/provider/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/securitycenter/provider/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/securitycenter/provider/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/securitycenter/provider/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securitycenter/provider/a;->h:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/provider/a;->f:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/provider/a;->h:Z

    return-void
.end method
