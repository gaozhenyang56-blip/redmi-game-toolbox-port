.class public Lv2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/text/SimpleDateFormat;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lv2/a;->a:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lv2/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lv2/a;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lv2/a;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2, v0}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lv2/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lv2/a;->e:Ljava/lang/String;

    iput-object p4, p0, Lv2/a;->f:Ljava/lang/String;

    iput-object p5, p0, Lv2/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv2/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv2/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv2/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv2/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv2/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv2/a;->g:Ljava/lang/String;

    return-object v0
.end method
