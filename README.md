allanfann-docker-scrapy
=======================


Create image
-----

To create the image `allanfann/scrapy`, execute the following command on the allanfann-docker-scrapy folder:

	docker build -t allanfann/scrapy .

  sudo docker run allanfann/scrapya

  sudo docker exec -i -t ab6f2379f9d7 /bin/bash
    

Or you can pull image directly:

	docker pull allanfann/scrapy .

Running your crawl spider
------------------------------

    docker run -v <spider_full_path>:/app \
                  scrapy \
                  bash -c "/usr/bin/scrapy crawl <spider_name>" .




