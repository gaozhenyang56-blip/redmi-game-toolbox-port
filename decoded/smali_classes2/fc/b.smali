.class public Lfc/b;
.super Lfc/a;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/model/LocalAppInfoBean;)V
    .locals 1

    invoke-direct {p0}, Lfc/a;-><init>()V

    iget-object v0, p1, Lcom/miui/permcenter/model/LocalAppInfoBean;->iconUrl:Ljava/lang/String;

    iput-object v0, p0, Lfc/b;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/permcenter/model/LocalAppInfoBean;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lfc/b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/permcenter/model/LocalAppInfoBean;->name:Ljava/lang/String;

    iput-object p1, p0, Lfc/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/permcenter/model/LocalAppInfoBean;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lfc/b;-><init>(Lcom/miui/permcenter/model/LocalAppInfoBean;)V

    iput-boolean p2, p0, Lfc/b;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
