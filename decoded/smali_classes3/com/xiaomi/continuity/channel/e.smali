.class public final synthetic Lcom/xiaomi/continuity/channel/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/xiaomi/continuity/channel/Packet;Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/xiaomi/continuity/channel/Packet;->asFile(Ljava/io/File;)V

    return-void
.end method

.method public static b(Lcom/xiaomi/continuity/channel/Packet;Ljava/io/FileDescriptor;)V
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-interface {p0, v0}, Lcom/xiaomi/continuity/channel/Packet;->asOutput(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static c([B)Lcom/xiaomi/continuity/channel/Packet;
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/continuity/channel/NPacket;->fromBytes([B)Lcom/xiaomi/continuity/channel/NPacket;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/io/File;)Lcom/xiaomi/continuity/channel/Packet;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/xiaomi/continuity/channel/NPacket;->fromFile(Ljava/io/File;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/NPacket;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/io/File;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/Packet;
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/continuity/channel/NPacket;->fromFile(Ljava/io/File;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/NPacket;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/io/FileDescriptor;)Lcom/xiaomi/continuity/channel/Packet;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Lcom/xiaomi/continuity/channel/e;->h(Ljava/io/InputStream;)Lcom/xiaomi/continuity/channel/Packet;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/io/FileDescriptor;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/Packet;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/channel/e;->i(Ljava/io/InputStream;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/Packet;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/io/InputStream;)Lcom/xiaomi/continuity/channel/Packet;
    .locals 6

    const-wide/16 v1, -0x1

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/continuity/channel/NPacket;->fromInputStream(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/NPacket;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/io/InputStream;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/Packet;
    .locals 6

    const-wide/16 v1, -0x1

    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/continuity/channel/NPacket;->fromInputStream(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/NPacket;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/Packet;
    .locals 6

    const-wide/16 v1, -0x1

    const-string v3, ""

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/continuity/channel/NPacket;->fromInputStream(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/NPacket;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/net/Uri;)Lcom/xiaomi/continuity/channel/Packet;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/xiaomi/continuity/channel/e;->l(Landroid/net/Uri;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/Packet;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/net/Uri;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/Packet;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromUri:fileUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Packet"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/continuity/util/UriUtils;->parseFileNameByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/xiaomi/continuity/util/UriUtils;->parseMimeTypeByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/continuity/channel/NPacket;->fromInputStream(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/NPacket;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/continuity/util/UriUtils;->uriToInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-wide/16 v3, -0x1

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/continuity/channel/NPacket;->fromInputStream(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/continuity/channel/NPacket;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "fromUri:"

    invoke-static {p1}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
